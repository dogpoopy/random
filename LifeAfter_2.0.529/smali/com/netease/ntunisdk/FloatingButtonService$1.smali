.class Lcom/netease/ntunisdk/FloatingButtonService$1;
.super Ljava/lang/Object;
.source "FloatingButtonService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/FloatingButtonService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/FloatingButtonService;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/FloatingButtonService;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-static {p1}, Lcom/netease/ntunisdk/FloatingButtonService;->access$000(Lcom/netease/ntunisdk/FloatingButtonService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const/4 p1, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 98
    iget-object v2, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    .line 99
    invoke-virtual {v2}, Lcom/netease/ntunisdk/FloatingButtonService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/FloatingButtonService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unishare_compat_float_again_to_back"

    const-string v6, "string"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 98
    invoke-static {v2, v3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    const-class v4, Lcom/netease/ntunisdk/base/deeplink/UniDeepLinkActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "shouldCallback"

    .line 104
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 105
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/FloatingButtonService;->startActivity(Landroid/content/Intent;)V

    .line 109
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/FloatingButtonService$1;->this$0:Lcom/netease/ntunisdk/FloatingButtonService;

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/FloatingButtonService;->access$002(Lcom/netease/ntunisdk/FloatingButtonService;J)J

    return-void
.end method
