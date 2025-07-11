.class Lcom/netease/mrzhna/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->show_dialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2371
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$20;->this$0:Lcom/netease/mrzhna/Launcher;

    iput-object p2, p0, Lcom/netease/mrzhna/Launcher$20;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2374
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$20;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$20;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$20;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "ic_launcher"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2375
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$20;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "neox_cancel"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$20$1;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$20$1;-><init>(Lcom/netease/mrzhna/Launcher$20;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 2383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2385
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2389
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
