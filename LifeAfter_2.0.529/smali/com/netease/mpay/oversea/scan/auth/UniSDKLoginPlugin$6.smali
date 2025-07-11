.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;
.super Ljava/lang/Object;
.source "UniSDKLoginPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->showLoginRetryAlert(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

.field final synthetic val$origin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

.field final synthetic val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->val$origin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->val$sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$6;->val$origin:Lcom/netease/ntunisdk/base/OnLoginDoneListener;

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$500(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnLoginDoneListener;)V

    return-void
.end method
