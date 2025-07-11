.class Lcom/netease/ntunisdk/aidl/NGRemoteService$1;
.super Lcom/netease/ntunisdk/IRemoteService$Stub;
.source "NGRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/aidl/NGRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/aidl/NGRemoteService;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/aidl/NGRemoteService;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/aidl/NGRemoteService$1;->this$0:Lcom/netease/ntunisdk/aidl/NGRemoteService;

    invoke-direct {p0}, Lcom/netease/ntunisdk/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/netease/ntunisdk/IRemoteCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    sput-object p1, Lcom/netease/ntunisdk/aidl/NGRemoteService;->callback:Lcom/netease/ntunisdk/IRemoteCallback;

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ng_webview#ips"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 51
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NGWebViewClose"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getInstance()Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
