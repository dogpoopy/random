.class public final synthetic Landroidx/camera/view/-$$Lambda$PreviewStreamStateObserver$_cwgtHjD7ilu2LvWhgMiFgcn29E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewStreamStateObserver;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewStreamStateObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$PreviewStreamStateObserver$_cwgtHjD7ilu2LvWhgMiFgcn29E;->f$0:Landroidx/camera/view/PreviewStreamStateObserver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$PreviewStreamStateObserver$_cwgtHjD7ilu2LvWhgMiFgcn29E;->f$0:Landroidx/camera/view/PreviewStreamStateObserver;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroidx/camera/view/PreviewStreamStateObserver;->lambda$startPreviewStreamStateFlow$1$PreviewStreamStateObserver(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
