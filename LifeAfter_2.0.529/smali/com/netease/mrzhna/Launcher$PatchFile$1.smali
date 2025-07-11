.class Lcom/netease/mrzhna/Launcher$PatchFile$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher$PatchFile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mrzhna/Launcher$PatchFile;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher$PatchFile;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PatchFile"

    .line 1346
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$1500(Lcom/netease/mrzhna/Launcher;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$1500(Lcom/netease/mrzhna/Launcher;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$1600(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$1600(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1355
    :cond_1
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher$PatchFile;->access$1700(Lcom/netease/mrzhna/Launcher$PatchFile;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1357
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "ic_launcher"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher$PatchFile;->access$1700(Lcom/netease/mrzhna/Launcher$PatchFile;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "neox_launcher_failure_engine"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "neox_launcher_failure"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1366
    :goto_0
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "neox_confirm"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Launcher$PatchFile$1$1;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Launcher$PatchFile$1$1;-><init>(Lcom/netease/mrzhna/Launcher$PatchFile$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1380
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v2

    const-class v3, Lcom/netease/mrzhna/Client;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1383
    :try_start_0
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v2}, Lcom/netease/mrzhna/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "run!!!"

    .line 1384
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const-string v3, "run!!! pullupIntent is not null"

    .line 1386
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "run!!! pullupUri is not null"

    .line 1389
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const-string v3, "run!!! error!"

    .line 1394
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1398
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1399
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$PatchFile$1;->this$1:Lcom/netease/mrzhna/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$PatchFile;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->finish()V

    return-void
.end method
