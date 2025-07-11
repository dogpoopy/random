.class public Lcom/netease/advertSdk/AfData;
.super Ljava/lang/Object;
.source "AfData.java"


# instance fields
.field private disableGaid:Z

.field private isCmp:Z

.field private isGameDma:Z

.field private isKoreaProtocolLauncher:Z

.field private jsonObj:Lorg/json/JSONObject;

.field private minorStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/netease/advertSdk/AfData;->minorStatus:I

    return-void
.end method


# virtual methods
.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netease/advertSdk/AfData;->jsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMinorStatus()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netease/advertSdk/AfData;->minorStatus:I

    return v0
.end method

.method public isCmp()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/netease/advertSdk/AfData;->isCmp:Z

    return v0
.end method

.method public isDisableGaid()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/netease/advertSdk/AfData;->disableGaid:Z

    return v0
.end method

.method public isGameDma()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/netease/advertSdk/AfData;->isGameDma:Z

    return v0
.end method

.method public isKoreaProtocolLauncher()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/netease/advertSdk/AfData;->isKoreaProtocolLauncher:Z

    return v0
.end method

.method public setCmp(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/netease/advertSdk/AfData;->isCmp:Z

    return-void
.end method

.method public setDisableGaid(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/netease/advertSdk/AfData;->disableGaid:Z

    return-void
.end method

.method public setGameDma(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/netease/advertSdk/AfData;->isGameDma:Z

    return-void
.end method

.method public setJsonObj(Lorg/json/JSONObject;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/advertSdk/AfData;->jsonObj:Lorg/json/JSONObject;

    return-void
.end method

.method public setKoreaProtocolLauncher(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/netease/advertSdk/AfData;->isKoreaProtocolLauncher:Z

    return-void
.end method

.method public setMinorStatus(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/netease/advertSdk/AfData;->minorStatus:I

    return-void
.end method
