.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FocusClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 525
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$000(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$600(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;FF)V

    .line 527
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$700(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/view/PreviewView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$800(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$700(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/view/PreviewView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/view/PreviewView;->getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$000(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object p1

    .line 530
    new-instance v0, Landroidx/camera/core/FocusMeteringAction$Builder;

    invoke-direct {v0, p1}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;)V

    invoke-virtual {v0}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object p1

    .line 531
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$800(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraControl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 534
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusClickListener -> onClick -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
