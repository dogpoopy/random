.class Lcom/netease/ntunisdk/SdkFacebook$MgCallback;
.super Lcom/netease/ntunisdk/SdkFacebook$FbCallback;
.source "SdkFacebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;)V
    .locals 1

    .line 579
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkFacebook$FbCallback;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$1;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share failed, errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNISDK_FB_SHARE_FAILURE_MESSAGE"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;->isMistake(Lcom/facebook/FacebookException;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkFacebook;->access$600(Lcom/netease/ntunisdk/SdkFacebook;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "Fail to start up Messenger. Try open messenger app manually, then go back to game and try again."

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 587
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    goto :goto_0

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_0
    return-void
.end method
