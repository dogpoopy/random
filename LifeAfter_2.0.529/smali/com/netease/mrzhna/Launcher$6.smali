.class Lcom/netease/mrzhna/Launcher$6;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->preparePatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1225
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Launcher$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1230
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$1000(Lcom/netease/mrzhna/Launcher;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativePreparePatch(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1225
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/Launcher$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 1238
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetPatchStatus()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "ic_launcher"

    invoke-static {v1, v2}, Lcom/netease/mrzhna/Launcher;->access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    .line 1245
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v1, "neox_launcher_failure_engine"

    invoke-static {p1, v1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1248
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v1, "neox_launcher_failure_checkupdate"

    invoke-static {p1, v1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1250
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v1, "neox_confirm"

    invoke-static {p1, v1}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lcom/netease/mrzhna/Launcher$6$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Launcher$6$1;-><init>(Lcom/netease/mrzhna/Launcher$6;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1263
    :cond_1
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$6;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mrzhna/Launcher;->startPatch()V

    return-void
.end method
