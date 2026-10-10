typedef unsigned int u32;

int ov15_021FB820(void *app)
{
    int (*callback)(void *) = *(int (**)(void *))((unsigned char *)app + 0x67c);
    return callback(app);
}
