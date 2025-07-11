.class public Lcom/squareup/picasso/PicassoCompat;
.super Ljava/lang/Object;
.source "PicassoCompat.java"


# static fields
.field private static methodGet:Ljava/lang/reflect/Method;

.field private static methodWith:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    :try_start_0
    sget-object v2, Lcom/squareup/picasso/PicassoCompat;->methodWith:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 15
    const-class v2, Lcom/squareup/picasso/Picasso;

    const-string v4, "with"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/squareup/picasso/PicassoCompat;->methodWith:Ljava/lang/reflect/Method;

    .line 17
    :cond_0
    sget-object v2, Lcom/squareup/picasso/PicassoCompat;->methodWith:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 27
    :cond_1
    :try_start_1
    sget-object v2, Lcom/squareup/picasso/PicassoCompat;->methodGet:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 28
    const-class v2, Lcom/squareup/picasso/Picasso;

    const-string v3, "get"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/squareup/picasso/PicassoCompat;->methodGet:Ljava/lang/reflect/Method;

    .line 30
    :cond_2
    sget-object v2, Lcom/squareup/picasso/PicassoCompat;->methodGet:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method
