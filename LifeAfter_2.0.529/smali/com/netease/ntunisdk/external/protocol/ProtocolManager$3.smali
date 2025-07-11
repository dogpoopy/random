.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showErrorDialog(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$isForceQuit:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$isForceQuit:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 209
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;)V

    .line 217
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getLocale()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResourcesConfigLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 222
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 223
    iput-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 224
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "unisdk_protocol_network_error"

    invoke-static {v2, v4, v3}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "unisdk_protocol_retry"

    invoke-static {v4, v5, v3}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v5}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v5

    const-string v6, "unisdk_protocol_cancel"

    invoke-static {v5, v6, v3}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    new-instance v6, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;)V

    new-instance v7, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;)V

    const-string v1, "  "

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
