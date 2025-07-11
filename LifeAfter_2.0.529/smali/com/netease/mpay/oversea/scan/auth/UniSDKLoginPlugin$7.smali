.class Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$7;
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


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$7;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin$7;->this$0:Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;->access$402(Lcom/netease/mpay/oversea/scan/auth/UniSDKLoginPlugin;Z)Z

    .line 251
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    return-void
.end method
