.class public final synthetic Landroidx/camera/extensions/-$$Lambda$ExtensionsManager$fK8EXwZ-Ue_Qt8XpKmiRdH-HQtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/ExtensionsManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/ExtensionsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsManager$fK8EXwZ-Ue_Qt8XpKmiRdH-HQtY;->f$0:Landroidx/camera/extensions/ExtensionsManager;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsManager$fK8EXwZ-Ue_Qt8XpKmiRdH-HQtY;->f$0:Landroidx/camera/extensions/ExtensionsManager;

    invoke-virtual {v0, p1}, Landroidx/camera/extensions/ExtensionsManager;->lambda$shutdown$1$ExtensionsManager(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
