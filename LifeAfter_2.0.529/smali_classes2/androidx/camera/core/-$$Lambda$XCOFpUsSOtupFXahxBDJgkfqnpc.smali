.class public final synthetic Landroidx/camera/core/-$$Lambda$XCOFpUsSOtupFXahxBDJgkfqnpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/Preview;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$XCOFpUsSOtupFXahxBDJgkfqnpc;->f$0:Landroidx/camera/core/Preview;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$XCOFpUsSOtupFXahxBDJgkfqnpc;->f$0:Landroidx/camera/core/Preview;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->notifyReset()V

    return-void
.end method
