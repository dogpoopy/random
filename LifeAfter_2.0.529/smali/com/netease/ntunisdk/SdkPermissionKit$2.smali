.class Lcom/netease/ntunisdk/SdkPermissionKit$2;
.super Ljava/lang/Object;
.source "SdkPermissionKit.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;


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

.field final synthetic val$obj:Lorg/json/JSONObject;

.field final synthetic val$requestChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkPermissionKit;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->val$obj:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->val$requestChannel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult(Ljava/lang/String;[ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 4

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "permission onPermissionResult callback:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK PermissionKit"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
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

    .line 150
    invoke-virtual {p4, p3}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_2

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->this$0:Lcom/netease/ntunisdk/SdkPermissionKit;

    iget-object p3, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->val$requestChannel:Ljava/lang/String;

    sget-object p4, Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;->SUCCESS:Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPermissionKit$2;->val$obj:Lorg/json/JSONObject;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/netease/ntunisdk/SdkPermissionKit;->access$300(Lcom/netease/ntunisdk/SdkPermissionKit;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;Lorg/json/JSONObject;[I)V

    :goto_2
    return-void
.end method
