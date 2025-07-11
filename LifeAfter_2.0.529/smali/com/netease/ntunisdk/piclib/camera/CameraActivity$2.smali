.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$2;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$2;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$2;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$300(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;I)V

    return-void
.end method
