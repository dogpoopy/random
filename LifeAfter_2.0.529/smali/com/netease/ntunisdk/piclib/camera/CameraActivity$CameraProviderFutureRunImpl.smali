.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraProviderFutureRunImpl"
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

    .line 733
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1000(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    return-void
.end method
