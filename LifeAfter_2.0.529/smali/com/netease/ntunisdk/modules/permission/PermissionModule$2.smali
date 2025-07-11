.class Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;
.super Ljava/lang/Object;
.source "PermissionModule.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/PermissionModule;->requestPermission(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

.field final synthetic val$callType:Ljava/lang/String;

.field final synthetic val$obj:Lorg/json/JSONObject;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$obj:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$callType:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(Ljava/lang/String;[ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 7

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "permission onPermissionResult callback:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PermissionModule"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p2, v1

    const/4 v3, -0x1

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p4, p3}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_2

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$callType:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$source:Ljava/lang/String;

    sget-object v4, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    iget-object v5, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$2;->val$obj:Lorg/json/JSONObject;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->extendCall(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    :goto_2
    return-void
.end method
