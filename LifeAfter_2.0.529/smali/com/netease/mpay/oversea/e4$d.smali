.class Lcom/netease/mpay/oversea/e4$d;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/netease/mpay/oversea/e4$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/e4$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/e4$d;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/e4$d;->c:Z

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/e4$d;->d:Lcom/netease/mpay/oversea/e4$b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "image/jpeg"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    :cond_0
    const-string v0, "image/png"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    :cond_1
    const-string v0, "image/webp"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/mpay/oversea/e4$d;->a:Ljava/lang/String;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 15
    :cond_1
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string p2, "GET"

    .line 18
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p2, 0x7d0

    .line 19
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 20
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e4$d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    .line 38
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return-object v1

    .line 39
    :cond_3
    :try_start_3
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 42
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/e4$d;->c:Z

    if-eqz v3, :cond_4

    .line 43
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0x64

    .line 44
    :try_start_4
    invoke-virtual {v2, p1, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 45
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    .line 53
    :cond_4
    :goto_0
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    nop

    :goto_1
    if-eqz v1, :cond_5

    .line 59
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_5
    return-object v2

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    goto :goto_4

    :catch_5
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    .line 60
    :goto_2
    :try_start_7
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p2, :cond_6

    .line 64
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 70
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_7
    return-object v1

    :goto_4
    if-eqz p2, :cond_8

    .line 71
    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_5

    :catch_8
    nop

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 77
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 81
    :catch_9
    :cond_9
    throw p1
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/e4$d;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/oversea/e4$d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/e4$d;->d:Lcom/netease/mpay/oversea/e4$b;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1}, Lcom/netease/mpay/oversea/e4$b;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/e4$d;->d:Lcom/netease/mpay/oversea/e4$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/netease/mpay/oversea/e4$b;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
