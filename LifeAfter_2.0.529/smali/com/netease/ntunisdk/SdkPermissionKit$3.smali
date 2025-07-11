.class Lcom/netease/ntunisdk/SdkPermissionKit$3;
.super Ljava/lang/Object;
.source "SdkPermissionKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkPermissionKit;->requestPermission(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

.field final synthetic val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

.field final synthetic val$permissionNameTemp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkPermissionKit;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionNameTemp:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkPermissionKit;->access$000(Lcom/netease/ntunisdk/SdkPermissionKit;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionNameTemp:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runOnUiThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionNameTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK PermissionKit"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkPermissionKit;->access$200(Lcom/netease/ntunisdk/SdkPermissionKit;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    return-void
.end method
