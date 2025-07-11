.class public Lcom/netease/ntunisdk/piclib/utils/OtherUtils;
.super Ljava/lang/Object;
.source "OtherUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtherUtils"

.field private static final cursorRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

.field private static final fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

.field private static isHigherThanQ:I = -0x1

.field private static final mediaRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

.field private static final screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    .line 36
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    .line 37
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->mediaRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

    .line 38
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cursorRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelItemAnimator(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    return-void
.end method

.method public static cancelPending(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->mediaRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->cancelPending(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static checkLanguage(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLanguage;->SUPPORTED_LANGUAGE:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 215
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissions"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 171
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OtherUtils"

    invoke-static {v5, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p0, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static containsEmoji(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 59
    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isEmojiCharacter(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static createLocal(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    const-string v0, "zh-Hans"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const-string v0, "zh-Hant"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object p0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    goto :goto_0

    .line 264
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->languageMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static createMediaUri(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;ZLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
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
            "context",
            "fileName",
            "mediaType",
            "pending",
            "suffix",
            "folder"
        }
    .end annotation

    .line 251
    sget-object v7, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->mediaRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;

    monitor-enter v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 252
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$MediaRelative;->createMediaUri(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;ZLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    monitor-exit v7

    return-object p0

    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deleteFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;->deleteFiles(Ljava/util/List;)V

    .line 43
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 5

    .line 184
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 194
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 195
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    :goto_1
    mul-long v0, v0, v3

    return-wide v0
.end method

.method public static getIntValueFromCursor(Landroid/database/Cursor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cursorRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;->getIntValueFromCursor(Landroid/database/Cursor;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLongValueFromCursor(Landroid/database/Cursor;I)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cursorRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;->getLongValueFromCursor(Landroid/database/Cursor;I)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "split"
        }
    .end annotation

    const-class v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    const-string p1, ""

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez p1, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    aput-object p0, p1, v3

    const-string p0, ""

    aput-object p0, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit v0

    return-object p1

    :cond_1
    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRealShowWH(IIIII)[I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "showSizeWidth",
            "showSizeHeight",
            "oriWidth",
            "oriHeight",
            "orientation"
        }
    .end annotation

    .line 239
    sget-object v6, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    monitor-enter v6

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 240
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getRealShowWH(IIIII)[I

    move-result-object p0

    monitor-exit v6

    return-object p0

    :catchall_0
    move-exception p0

    .line 241
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getShowSize(Landroid/content/Context;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "quality"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    monitor-enter v0

    .line 246
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getShowSize(Landroid/content/Context;I)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getShowSize(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sizeType"
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getShowSize(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "index"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->cursorRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$CursorRelative;->getStringValueFromCursor(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static higherThanQ()Z
    .locals 4

    .line 74
    sget v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isHigherThanQ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 75
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    .line 76
    sput v1, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isHigherThanQ:I

    return v1

    .line 79
    :cond_2
    sput v2, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->isHigherThanQ:I

    return v2
.end method

.method private static isEmojiCharacter(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codePoint"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    const-string v0, "image/gif"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/GIF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPermissionsGranted([I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grantResults"
        }
    .end annotation

    .line 162
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "video/"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static languageMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    const-string v0, "id"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "in"

    :cond_0
    return-object p0
.end method

.method public static parseErrorByCode(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const-string p0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :pswitch_0
    const-string p0, "\u7528\u6237\u5c1a\u672a\u5bf9\u83b7\u53d6\u6743\u9650\u505a\u51fa\u9009\u62e9"

    goto :goto_0

    :pswitch_1
    const-string p0, "\u6ca1\u6709\u8bfb\u5199\u76f8\u518c\u6743\u9650"

    goto :goto_0

    :pswitch_2
    const-string p0, "\u6ca1\u6709\u5199\u5165\u76f8\u518c\u6743\u9650"

    goto :goto_0

    :pswitch_3
    const-string p0, "\u4fdd\u5b58\u5a92\u4f53\u5230\u76f8\u518c\u5931\u8d25"

    goto :goto_0

    :pswitch_4
    const-string p0, "\u672c\u5730\u6587\u4ef6\u8d44\u6e90\u4e0d\u5b58\u5728"

    goto :goto_0

    :pswitch_5
    const-string p0, "\u8d44\u6e90\u5bfc\u51fa\u5931\u8d25"

    goto :goto_0

    :pswitch_6
    const-string p0, "\u8bf7\u6c42\u7167\u7247\u8d44\u6e90\u5931\u8d25"

    goto :goto_0

    :pswitch_7
    const-string p0, "\u8bbe\u5907\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_0

    :pswitch_8
    const-string p0, "\u53d6\u6d88"

    goto :goto_0

    :pswitch_9
    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized rotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "degree",
            "bitmap"
        }
    .end annotation

    const-class v0, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;

    monitor-enter v0

    .line 203
    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 204
    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    .line 205
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
