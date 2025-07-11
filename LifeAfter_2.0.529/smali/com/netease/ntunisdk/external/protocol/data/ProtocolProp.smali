.class public Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;
.super Ljava/lang/Object;
.source "ProtocolProp.java"


# instance fields
.field private agreeLineText:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private issuer:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private newOfflineFlag:Ljava/lang/String;

.field private offlineGameFlag:Ljava/lang/String;

.field private showAgreeLineFlag:Ljava/lang/String;

.field private showTitleFlag:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreeLineText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->agreeLineText:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getNewOfflineFlag()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->newOfflineFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineGameFlag()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->offlineGameFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAgreeLineFlag()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->showAgreeLineFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTitleFlag()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->showTitleFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreeLineText(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->agreeLineText:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->issuer:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->locale:Ljava/lang/String;

    return-void
.end method

.method public setNewOfflineFlag(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->newOfflineFlag:Ljava/lang/String;

    return-void
.end method

.method public setOfflineGameFlag(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->offlineGameFlag:Ljava/lang/String;

    return-void
.end method

.method public setShowAgreeLineFlag(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->showAgreeLineFlag:Ljava/lang/String;

    return-void
.end method

.method public setShowTitleFlag(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->showTitleFlag:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prop"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlType(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->urlType:Ljava/lang/String;

    return-void
.end method
