.class public Lcom/netease/ntunisdk/util/cutout/CutoutOppo;
.super Ljava/lang/Object;
.source "CutoutOppo.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSizes(Landroid/app/Activity;)V
    .locals 12

    const-string p1, "get error() "

    const-string v0, "error"

    .line 14
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->left:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->right:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->bottom:I

    if-nez v1, :cond_6

    :cond_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ro.oppo.screen.heteromorphism"

    aput-object v5, v4, v6

    .line 21
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v7, v1, v4

    const-string v8, ","

    .line 26
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 27
    array-length v8, v7

    move v9, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v10, v7, v5

    if-eqz v9, :cond_4

    if-eq v9, v3, :cond_3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-eq v9, v11, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->bottom:I

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->right:I

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->top:I

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->left:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 59
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_0
    move-exception v1

    .line 57
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v1

    .line 55
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v1

    .line 53
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v1

    .line 51
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_4
    move-exception v1

    .line 49
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_5
    move-exception v1

    .line 47
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 78
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->left:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->top:I

    const/4 v1, 0x1

    aput v0, p1, v1

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->right:I

    const/4 v1, 0x2

    aput v0, p1, v1

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->bottom:I

    const/4 v1, 0x3

    aput v0, p1, v1

    return-object p1
.end method

.method public getCutoutWidthHeight(Landroid/app/Activity;)[I
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->getSizes(Landroid/app/Activity;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 73
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->right:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->bottom:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOppo;->top:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
