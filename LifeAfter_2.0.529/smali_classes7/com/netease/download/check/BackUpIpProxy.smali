.class public Lcom/netease/download/check/BackUpIpProxy;
.super Ljava/lang/Object;
.source "BackUpIpProxy.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final INIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BackUpIpManager"

.field public static final USE:I = 0x2

.field public static final USE_FAIL:I = -0x1

.field private static sBackUpIpProxy:Lcom/netease/download/check/BackUpIpProxy;


# instance fields
.field private mBackUpIpStatus:I

.field private mHistoryTopSpeed:J

.field private mHistoryTopSpeedHost:Ljava/lang/String;

.field private mHistoryTopSpeedIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedIp:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedHost:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeed:J

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    return-void
.end method

.method public static getInstances()Lcom/netease/download/check/BackUpIpProxy;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/download/check/BackUpIpProxy;->sBackUpIpProxy:Lcom/netease/download/check/BackUpIpProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/download/check/BackUpIpProxy;

    invoke-direct {v0}, Lcom/netease/download/check/BackUpIpProxy;-><init>()V

    sput-object v0, Lcom/netease/download/check/BackUpIpProxy;->sBackUpIpProxy:Lcom/netease/download/check/BackUpIpProxy;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/download/check/BackUpIpProxy;->sBackUpIpProxy:Lcom/netease/download/check/BackUpIpProxy;

    return-object v0
.end method


# virtual methods
.method public getHistoryTopSpeed()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeed:J

    return-wide v0
.end method

.method public getHistoryTopSpeedHost()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedHost:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryTopSpeedIp()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedIp:Ljava/lang/String;

    return-object v0
.end method

.method public hasInitBackUpIp()Z
    .locals 3

    .line 91
    iget v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public neverUseBackUpIp()Z
    .locals 3

    const-string v0, "BackUpIpManager"

    const-string v1, "BackUpIpProxy [neverUseBackUpIp] start"

    .line 77
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v1, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    const-string v1, "BackUpIpProxy [neverUseBackUpIp] \u5df2\u7ecf\u4f7f\u7528\u8fc7BackUpIp\uff0c\u5e76\u4e14\u5931\u8d25\u8fc7\uff0c\u5176\u4ed6\u65b9\u65e0\u9700\u518d\u4f7f\u7528BackUpIp\u4e86"

    .line 81
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackUpInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-string v0, "BackUpIpManager"

    const-string v1, "BackUpIpProxy [setBackUpInfo] start"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackUpIpProxy [setBackUpInfo] \u8bbe\u7f6e\u5907\u7528ip\u4fe1\u606f mHistoryTopSpeedIp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHistoryTopSpeedHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHistoryTopSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedIp:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeedHost:Ljava/lang/String;

    .line 57
    iput-wide p3, p0, Lcom/netease/download/check/BackUpIpProxy;->mHistoryTopSpeed:J

    :cond_0
    return-void
.end method

.method public setBackUpIpStatus(I)V
    .locals 2

    .line 62
    iget v0, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    .line 67
    iput p1, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    return-void

    :cond_1
    if-ge v0, p1, :cond_2

    .line 72
    iput p1, p0, Lcom/netease/download/check/BackUpIpProxy;->mBackUpIpStatus:I

    :cond_2
    return-void
.end method
