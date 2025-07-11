.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->doTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$0$CameraActivity$3()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_take_photo_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTakePicture -> onError -> exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$500(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableSingleClick()V

    .line 359
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$3$H2IO9gmPl1hhv86z7-HQ8qR-mgU;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$3$H2IO9gmPl1hhv86z7-HQ8qR-mgU;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFileResults"
        }
    .end annotation

    .line 348
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doTakePicture -> onImageSaved -> file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 350
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catch_result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 352
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->finish()V

    return-void
.end method
