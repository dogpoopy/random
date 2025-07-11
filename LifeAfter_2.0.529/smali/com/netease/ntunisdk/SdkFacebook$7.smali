.class Lcom/netease/ntunisdk/SdkFacebook$7;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/netease/ntunisdk/FbMediaProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->doShareActions(Lcom/netease/ntunisdk/base/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;Ljava/lang/String;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->val$shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    .line 698
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] download failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniSDK SdkFacebook"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$7;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_0
    return-void
.end method
