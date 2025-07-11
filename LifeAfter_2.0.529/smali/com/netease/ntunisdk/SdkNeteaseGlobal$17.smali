.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/CheckApiAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLineGameUid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$loginType:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;I)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;->val$loginType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAuthValid(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1818
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1300(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/mpay/oversea/MpayOverseaApi;

    move-result-object p1

    iget p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;->val$loginType:I

    new-instance v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17$1;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;)V

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getThirdPartyCredentials(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    goto :goto_0

    .line 1831
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getChannelUid by getThirdPartyCredentials onFailure code:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniSDK netease_global"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
