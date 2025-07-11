.class final Lcom/netease/ntunisdk/MarketJumper$1;
.super Ljava/lang/Object;
.source "MarketJumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/MarketJumper;->onNoAppInstalledProcess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$context:Landroid/app/Activity;

    const-string v2, "unishare_compat_noapp_title"

    .line 23
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/MarketJumper;->access$000(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$appName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$context:Landroid/app/Activity;

    const-string v2, "unishare_compat_noapp_message"

    .line 24
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/MarketJumper;->access$000(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$appName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/MarketJumper$1;->val$context:Landroid/app/Activity;

    const-string v2, "unishare_compat_noapp_btn_download"

    .line 25
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/MarketJumper;->access$000(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/ntunisdk/MarketJumper$1$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/MarketJumper$1$1;-><init>(Lcom/netease/ntunisdk/MarketJumper$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
