.class Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "SdkNGShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveCacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkNGShareCompat$1;)V
    .locals 0

    .line 919
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;)Z
    .locals 0

    .line 919
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;->isCachedFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isCachedFile(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "cached_"

    .line 922
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x7

    .line 926
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v3, 0x0

    .line 929
    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v5, v3

    :goto_0
    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 919
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 937
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 940
    aget-object p1, p1, v1

    .line 941
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 942
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 945
    :cond_1
    new-instance v2, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask$1;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;)V

    .line 954
    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 955
    array-length v2, p1

    if-gtz v2, :cond_2

    goto :goto_1

    .line 959
    :cond_2
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 960
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "del \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' :"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UniSDK share_compat"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
