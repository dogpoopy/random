.class public Lcom/CCMsgSdk/CCMsgSdk;
.super Ljava/lang/Object;
.source "CCMsgSdk.java"


# static fields
.field private static _instance:Lcom/CCMsgSdk/CCMsgSdk;


# instance fields
.field private mController:Lcom/CCMsgSdk/CCMsgController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {v0}, Lcom/CCMsgSdk/CCMsgController;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgSdk;->mController:Lcom/CCMsgSdk/CCMsgController;

    return-void
.end method

.method public static shareInstance()Lcom/CCMsgSdk/CCMsgSdk;
    .locals 1

    .line 14
    sget-object v0, Lcom/CCMsgSdk/CCMsgSdk;->_instance:Lcom/CCMsgSdk/CCMsgSdk;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/CCMsgSdk/CCMsgSdk;

    invoke-direct {v0}, Lcom/CCMsgSdk/CCMsgSdk;-><init>()V

    sput-object v0, Lcom/CCMsgSdk/CCMsgSdk;->_instance:Lcom/CCMsgSdk/CCMsgSdk;

    .line 17
    :cond_0
    sget-object v0, Lcom/CCMsgSdk/CCMsgSdk;->_instance:Lcom/CCMsgSdk/CCMsgSdk;

    return-object v0
.end method


# virtual methods
.method public control(Ljava/lang/String;I)I
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "control: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCMsgSdk]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmd"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "regist"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sub"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unsub"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "config-http"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "close"

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    return p1

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgSdk;->mController:Lcom/CCMsgSdk/CCMsgController;

    invoke-virtual {p1, v0, p2}, Lcom/CCMsgSdk/CCMsgController;->control(Lorg/json/JSONObject;I)V

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public fetchMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgSdk;->mController:Lcom/CCMsgSdk/CCMsgController;

    invoke-virtual {v0}, Lcom/CCMsgSdk/CCMsgController;->fetchUnreadMsgs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
