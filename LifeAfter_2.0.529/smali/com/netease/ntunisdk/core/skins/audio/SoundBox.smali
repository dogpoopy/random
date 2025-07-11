.class public Lcom/netease/ntunisdk/core/skins/audio/SoundBox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/skins/audio/SoundBox$SOUND_TYPE;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/netease/ntunisdk/core/skins/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/netease/ntunisdk/core/skins/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/media/SoundPool;

.field private e:Landroid/content/res/AssetManager;

.field private f:I

.field private g:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->c:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)Landroid/media/SoundPool;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    return-object p0
.end method

.method private static a(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/content/res/AssetManager;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundBox: current soundVolume is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    invoke-static {v0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SoundBox: Could not load sound, reason: play sound not open"

    :goto_0
    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b(Landroid/content/res/AssetManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->e:Landroid/content/res/AssetManager;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b(Landroid/content/res/AssetManager;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SoundBox: Could not load sound, reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Landroid/content/res/AssetManager;ILjava/lang/String;)Z
    .locals 8

    const-string v0, " from "

    const-string v1, "SoundBox: load "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mpay_sounds/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/netease/ntunisdk/core/skins/audio/Sound;

    invoke-direct {v4, v2}, Lcom/netease/ntunisdk/core/skins/audio/Sound;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iget-object v5, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->setSoundId(Ljava/lang/Integer;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " succeed!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v5, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    return v3

    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return v3
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->c:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/content/res/AssetManager;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->e:Landroid/content/res/AssetManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I

    if-ne p1, v0, :cond_1

    const-string p1, "(\u9ed8\u8ba4\u97f3\u6548)"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundBox: sounds has been loaded in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->release()V

    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    new-instance v2, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox$1;-><init>(Lcom/netease/ntunisdk/core/skins/audio/SoundBox;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const-string v1, "click.mp3"

    invoke-direct {p0, p1, v3, v1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(Landroid/content/res/AssetManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    const-string v2, "alert.mp3"

    invoke-direct {p0, p1, v1, v2}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(Landroid/content/res/AssetManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I

    :cond_4
    return v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a:Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "SoundBox--------init--------"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->e:Landroid/content/res/AssetManager;

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->loadSounds()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadSounds()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "SoundBox--------loadSounds--------"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getInstance()Lcom/netease/ntunisdk/core/skins/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/skins/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(Landroid/content/res/AssetManager;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSound(I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/core/skins/audio/Sound;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->getSoundId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundBox: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s soundId is null!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    invoke-static {v1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->a(F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    iget v5, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SoundBox: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/skins/audio/Sound;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has call played! volume is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", result is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "SoundBox: soundbox release is called"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->d:Landroid/media/SoundPool;

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSoundVolume(F)V
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->g:F

    return-void
.end method
