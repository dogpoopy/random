.class public Lcom/netease/ntunisdk/WebviewParams;
.super Ljava/lang/Object;
.source "WebviewParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private YYGameID:Ljava/lang/String;

.field private additionalUserAgent:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private channelID:Ljava/lang/String;

.field private closeBtnHeight:I

.field private closeBtnOriginX:I

.field private closeBtnOriginY:I

.field private closeBtnWidth:I

.field private closeButtonVisible:Z

.field private hasCutout:Z

.field private height:I

.field private intercept_schemes:Ljava/lang/String;

.field private isFullScreen:Z

.field private navigationBarVisible:Z

.field private orientation:I

.field private originX:I

.field private originY:I

.field private qstnCloseBtnVisible:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private scriptVersion:Ljava/lang/String;

.field private supportBackKey:Z

.field private url:Ljava/lang/String;

.field private webviewBackgroundColor:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalUserAgent()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->additionalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelID()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->channelID:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseBtnHeight()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnHeight:I

    return v0
.end method

.method public getCloseBtnOriginX()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnOriginX:I

    return v0
.end method

.method public getCloseBtnOriginY()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnOriginY:I

    return v0
.end method

.method public getCloseBtnWidth()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->height:I

    return v0
.end method

.method public getIntercept_schemes()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->intercept_schemes:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->orientation:I

    return v0
.end method

.method public getOriginX()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->originX:I

    return v0
.end method

.method public getOriginY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->originY:I

    return v0
.end method

.method public getScriptVersion()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->scriptVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebviewBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->webviewBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/netease/ntunisdk/WebviewParams;->width:I

    return v0
.end method

.method public getYYGameID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/WebviewParams;->YYGameID:Ljava/lang/String;

    return-object v0
.end method

.method public isCloseButtonVisible()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->closeButtonVisible:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen:Z

    return v0
.end method

.method public isHasCutout()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->hasCutout:Z

    return v0
.end method

.method public isNavigationBarVisible()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->navigationBarVisible:Z

    return v0
.end method

.method public isQstnCloseBtnVisible()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->qstnCloseBtnVisible:Z

    return v0
.end method

.method public isSupportBackKey()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/netease/ntunisdk/WebviewParams;->supportBackKey:Z

    return v0
.end method

.method public setAdditionalUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->additionalUserAgent:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setChannelID(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->channelID:Ljava/lang/String;

    return-void
.end method

.method public setCloseBtnHeight(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnHeight:I

    return-void
.end method

.method public setCloseBtnOriginX(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnOriginX:I

    return-void
.end method

.method public setCloseBtnOriginY(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnOriginY:I

    return-void
.end method

.method public setCloseBtnWidth(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->closeBtnWidth:I

    return-void
.end method

.method public setCloseButtonVisible(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->closeButtonVisible:Z

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen:Z

    return-void
.end method

.method public setHasCutout(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->hasCutout:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->height:I

    return-void
.end method

.method public setIntercept_schemes(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->intercept_schemes:Ljava/lang/String;

    return-void
.end method

.method public setNavigationBarVisible(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->navigationBarVisible:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->orientation:I

    return-void
.end method

.method public setOriginX(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->originX:I

    return-void
.end method

.method public setOriginY(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->originY:I

    return-void
.end method

.method public setQstnCloseBtnVisible(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->qstnCloseBtnVisible:Z

    return-void
.end method

.method public setScriptVersion(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->scriptVersion:Ljava/lang/String;

    return-void
.end method

.method public setSupportBackKey(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/netease/ntunisdk/WebviewParams;->supportBackKey:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->url:Ljava/lang/String;

    return-void
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->webviewBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/netease/ntunisdk/WebviewParams;->width:I

    return-void
.end method

.method public setYYGameID(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/WebviewParams;->YYGameID:Ljava/lang/String;

    return-void
.end method
