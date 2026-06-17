#include "global.h"

typedef struct {
    u16 v0;
    u16 v1;
    u16 normalIdx;
    u16 constIdx;
} MeshFace;

typedef struct {
    fx32 x;
    fx32 y;
} MeshPoint;

typedef struct {
    fx32 key;
    u16 count;
    u16 start;
} MeshBucket;

typedef struct {
    MeshFace *faces;
    fx32 *consts;
    MeshBucket *buckets;
    u16 *faceIndices;
    MeshPoint *points;
    VecFx32 *normals;
    u32 unk18;
    int numBuckets;
} Mesh;

typedef struct {
    fx32 height;
    s32 unk4;
    s32 unk8;
} MeshHit;

extern fx32 sub_02020B8C(fx32 a, fx32 b);
extern fx32 sub_02020B94(fx32 a, fx32 b);

int ov01_021FAE50(int mode, fx32 arg1, fx32 x, fx32 z, const Mesh *mesh, fx32 *out);

static BOOL ov01_021FAD1C(const MeshPoint *a, const MeshPoint *b, const MeshPoint *p) {
    const fx32 *xmin;
    const fx32 *xmax;
    const fx32 *ymin;
    const fx32 *ymax;
    if (a->x <= b->x) {
        xmin = &a->x;
        xmax = &b->x;
    } else {
        xmin = &b->x;
        xmax = &a->x;
    }
    if (a->y <= b->y) {
        ymin = &a->y;
        ymax = &b->y;
    } else {
        ymin = &b->y;
        ymax = &a->y;
    }
    if (*xmin <= p->x && p->x <= *xmax && *ymin <= p->y && p->y <= *ymax) {
        return TRUE;
    }
    return FALSE;
}

static void ov01_021FAD6C(const Mesh *mesh, int faceIdx, MeshPoint *out) {
    out[0] = mesh->points[mesh->faces[faceIdx].v0];
    out[1] = mesh->points[mesh->faces[faceIdx].v1];
}

static void ov01_021FAD9C(const Mesh *mesh, int faceIdx, VecFx32 *out) {
    *out = mesh->normals[mesh->faces[faceIdx].normalIdx];
}

static void ov01_021FADBC(const Mesh *mesh, int faceIdx, fx32 *out) {
    *out = mesh->consts[mesh->faces[faceIdx].constIdx];
}

static void ov01_021FADD4(MeshHit *hits) {
    int i;
    for (i = 0; i < 10; i++) {
        hits[i].height = 0;
        hits[i].unk4 = -1;
        hits[i].unk8 = -1;
    }
}

static int ov01_021FADEC(const MeshBucket *table, int count, fx32 key, u16 *out) {
    int hi;
    int lo;
    int mid;
    if (count == 0) {
        return 0;
    }
    if (count == 1) {
        *out = 0;
        return 1;
    }
    hi = count - 1;
    lo = 0;
    mid = hi / 2;
    while (TRUE) {
        if (table[mid].key > key) {
            if (--hi > lo) {
                hi = mid;
                mid = (lo + mid) / 2;
            } else {
                *out = (u16)mid;
                return 1;
            }
        } else {
            if (++lo < hi) {
                lo = mid;
                mid = (mid + hi) / 2;
            } else {
                *out = (u16)(mid + 1);
                return 1;
            }
        }
    }
}

int ov01_021FAE50(int mode, fx32 arg1, fx32 x, fx32 z, const Mesh *mesh, fx32 *out) {
    MeshHit hits[10];
    MeshPoint corners[2];
    VecFx32 normal;
    MeshPoint query;
    fx32 planeConst;
    u16 bucketIdx;
    int validCount;
    u16 j;
    int bestIdx;
    u16 i;

    if (mesh->unk18 == 0) {
        return FALSE;
    }
    query.x = x;
    query.y = z;
    validCount = 0;
    ov01_021FADD4(hits);
    {
        MeshBucket *buckets = mesh->buckets;
        if (!ov01_021FADEC(buckets, (u16)mesh->numBuckets, query.y, &bucketIdx)) {
            return validCount;
        }
        {
            u16 count = buckets[bucketIdx].count;
            u16 start = buckets[bucketIdx].start;
            for (j = 0; j < count; j++) {
                int faceIdx = mesh->faceIndices[start + j];
                ov01_021FAD6C(mesh, faceIdx, corners);
                if (ov01_021FAD1C(&corners[0], &corners[1], &query) == 1) {
                    ov01_021FAD9C(mesh, faceIdx, &normal);
                    ov01_021FADBC(mesh, faceIdx, &planeConst);
                    hits[validCount].height = FX_Div(-(planeConst + (FX_Mul(normal.x, query.x) + FX_Mul(normal.z, query.y))), normal.y);
                    validCount++;
                    if (validCount >= 10) {
                        break;
                    }
                }
            }
        }
    }
    if (validCount > 1) {
        bestIdx = 0;
        switch (mode) {
        case 1: {
            fx32 best = 0xFF000000;
            u16 k;
            for (k = 0; k < validCount; k++) {
                if (best < hits[k].height) {
                    best = hits[k].height;
                    bestIdx = k;
                }
            }
            break;
        }
        case 2: {
            u16 k;
            fx32 best = 0x01000000;
            for (k = 0; k < validCount; k++) {
                if (best > hits[k].height) {
                    best = hits[k].height;
                    bestIdx = k;
                }
            }
            break;
        }
        case 0:
        default: {
            fx32 bestDist = sub_02020B94(arg1, hits[0].height) - sub_02020B8C(arg1, hits[0].height);
            for (i = 1; i < validCount; i++) {
                fx32 dist = sub_02020B94(arg1, hits[i].height) - sub_02020B8C(arg1, hits[i].height);
                if (bestDist > dist) {
                    bestDist = dist;
                    bestIdx = i;
                }
            }
            break;
        }
        }
        *out = hits[bestIdx].height;
        return TRUE;
    }
    if (validCount == 1) {
        *out = hits[0].height;
        return TRUE;
    }
    if (validCount != 0) {
        *out = hits[0].height;
        return TRUE;
    }
    return FALSE;
}
