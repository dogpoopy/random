.class public Lcom/netease/mpay/oversea/e3;
.super Lcom/netease/mpay/oversea/x;
.source "ExtFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/e3$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/x;-><init>(Ljava/lang/String;)V

    .line 2
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    .line 8
    :cond_1
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/e3;->h:Z

    .line 9
    iput-object p3, p0, Lcom/netease/mpay/oversea/e3;->d:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/netease/mpay/oversea/e3;->b:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/q;->g()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 13
    iput-object v0, p0, Lcom/netease/mpay/oversea/e3;->f:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p3, v1

    iput-object p3, p0, Lcom/netease/mpay/oversea/e3;->f:[Ljava/lang/String;

    .line 18
    :goto_1
    invoke-static {p1, v0, p4}, Lcom/netease/mpay/oversea/e3$a;->a(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 19
    iget-object p2, p0, Lcom/netease/mpay/oversea/e3;->f:[Ljava/lang/String;

    invoke-static {p1, p2, p4}, Lcom/netease/mpay/oversea/e3$a;->a(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 20
    iget-object p2, p0, Lcom/netease/mpay/oversea/e3;->f:[Ljava/lang/String;

    iget-object p3, p0, Lcom/netease/mpay/oversea/e3;->b:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/netease/mpay/oversea/e3$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/e3;->c:Ljava/lang/String;

    .line 21
    iget-object p2, p0, Lcom/netease/mpay/oversea/e3;->d:Ljava/lang/String;

    invoke-static {p1, p2, p4}, Lcom/netease/mpay/oversea/e3$a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/e3;->e:Ljava/lang/String;

    return-void
.end method

.method private a([Ljava/lang/String;[B)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/e3;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/e3;->a([Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/e3;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 9
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 14
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 18
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    goto :goto_0

    :catch_0
    move-object p1, p3

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 29
    :cond_4
    :goto_1
    throw p2

    :catch_2
    nop

    :goto_2
    if-eqz p1, :cond_5

    .line 30
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private b([B)V
    .locals 2

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mpay/oversea/e3;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/netease/mpay/oversea/e3;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/netease/mpay/oversea/e3;->a([Ljava/lang/String;[BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e3;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mpay/oversea/e3;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/mpay/oversea/e3;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v2, 0x0

    .line 11
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0x400

    :try_start_4
    new-array v0, v0, [B

    .line 15
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 20
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 29
    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception v0

    .line 32
    :try_start_6
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method protected a([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/e3;->c()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/e3;->f:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/oversea/e3;->a([Ljava/lang/String;[B)V

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/e3;->b([B)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/x;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected b()[B
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e3;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/e3;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/e3;->c()V

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/mpay/oversea/e3;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 10
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 12
    new-array v0, v0, [B

    .line 13
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 21
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    .line 22
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 24
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 27
    :cond_2
    :goto_2
    throw v0

    :catch_3
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 28
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-object v1
.end method

.method protected bridge synthetic b(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/x;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method
