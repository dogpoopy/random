.class public final synthetic Landroidx/camera/view/-$$Lambda$B47h3Av77XywWDkZdcofRi31dyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/ForwardingLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/ForwardingLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$B47h3Av77XywWDkZdcofRi31dyk;->f$0:Landroidx/camera/view/ForwardingLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$B47h3Av77XywWDkZdcofRi31dyk;->f$0:Landroidx/camera/view/ForwardingLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
