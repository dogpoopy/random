.class public Lcom/netease/ntunisdk/ngplugin/common/res/Sound;
.super Ljava/lang/Object;
.source "Sound.java"


# static fields
.field private static final MP3:Ljava/lang/String; = ".mp3"

.field private static final WAV:Ljava/lang/String; = ".wav"


# instance fields
.field private mAssetPath:Ljava/lang/String;

.field private mLoadSuccess:Z

.field private mName:Ljava/lang/String;

.field private mSoundId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mLoadSuccess:Z

    .line 12
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mAssetPath:Ljava/lang/String;

    const-string v0, "/"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 14
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    const-string v0, ""

    const-string v1, ".mp3"

    .line 15
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".wav"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssetPath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundId()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mSoundId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isLoadSuccess()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mLoadSuccess:Z

    return v0
.end method

.method public setLoadSuccess(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mLoadSuccess:Z

    return-void
.end method

.method public setSoundId(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/common/res/Sound;->mSoundId:Ljava/lang/Integer;

    return-void
.end method
