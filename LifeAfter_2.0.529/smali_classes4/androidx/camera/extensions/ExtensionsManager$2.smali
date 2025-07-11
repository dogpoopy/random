.class Landroidx/camera/extensions/ExtensionsManager$2;
.super Ljava/lang/Object;
.source "ExtensionsManager.java"

# interfaces
.implements Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/extensions/ExtensionsManager;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/extensions/ExtensionsManager;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/ExtensionsManager;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsManager$2;->this$0:Landroidx/camera/extensions/ExtensionsManager;

    iput-object p2, p0, Landroidx/camera/extensions/ExtensionsManager$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 364
    iget-object p1, p0, Landroidx/camera/extensions/ExtensionsManager$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to deinitialize extensions."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 359
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsManager$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method
