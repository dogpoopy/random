.class public Lcom/netease/ntunisdk/piclib/loader/MediaLoader;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;
    }
.end annotation


# static fields
.field public static final EXTERNAL_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final ORDER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final referenceContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "external"

    .line 27
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    const-string v11, "date_added"

    const-string v12, "orientation"

    .line 28
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaLoader"

    .line 25
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->TAG:Ljava/lang/String;

    const-string v0, "date_modified DESC"

    .line 43
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->ORDER:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->referenceContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->referenceContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public getAllSelection()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllSelectionArgs()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getOnlyImageSelectionArgs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getOnlyVideoSelectionArgs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x3

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSelection(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getAllSelection()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getSingleSelection()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectionArgs(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaType"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getOnlyImageSelectionArgs()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p1, v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getOnlyVideoSelectionArgs()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader;->getAllSelectionArgs()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSingleSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "media_type = ? AND _size > 0"

    return-object v0
.end method

.method public loadMedia(Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;ZJJLcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "recentPro",
            "supportGif",
            "videoMaxSelectDuration",
            "videoMaxSelectSize",
            "loadListener"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    move-object v3, p1

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p3

    .line 99
    :goto_0
    new-instance v0, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/netease/ntunisdk/piclib/loader/MediaLoader$1;-><init>(Lcom/netease/ntunisdk/piclib/loader/MediaLoader;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;Ljava/lang/String;ZJJLcom/netease/ntunisdk/piclib/loader/MediaLoader$LoadListener;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    return-void
.end method
