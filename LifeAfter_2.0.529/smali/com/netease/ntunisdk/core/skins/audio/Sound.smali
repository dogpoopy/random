.class public Lcom/netease/ntunisdk/core/skins/audio/Sound;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->d:Z

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->a:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    const-string v0, ""

    const-string v1, ".mp3"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".wav"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssetPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->d:Z

    return v0
.end method

.method public setLoadSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->d:Z

    return-void
.end method

.method public setSoundId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/skins/audio/Sound;->c:Ljava/lang/Integer;

    return-void
.end method
