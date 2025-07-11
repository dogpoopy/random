.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-onFailure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->val$jsonObject:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1400(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onLogout()V
    .locals 4

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-onLogout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetCommonProp()V

    .line 1185
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->logoutDone(I)V

    .line 1186
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "RefreshCallback.onUserLogout"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "step"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "logoutDone"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;->val$jsonObject:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1400(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    return-void
.end method
