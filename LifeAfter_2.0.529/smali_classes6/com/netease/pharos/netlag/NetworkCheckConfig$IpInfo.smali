.class public Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;
.super Ljava/lang/Object;
.source "NetworkCheckConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/netlag/NetworkCheckConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpInfo"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->parse(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 161
    new-instance v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;

    invoke-direct {v0}, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;-><init>()V

    .line 162
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 165
    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->name:Ljava/lang/String;

    const/4 p0, 0x0

    .line 166
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    const/4 p0, 0x1

    .line 167
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->port:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "ip is illegal"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
