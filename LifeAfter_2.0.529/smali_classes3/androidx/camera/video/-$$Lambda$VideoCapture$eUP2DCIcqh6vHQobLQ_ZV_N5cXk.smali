.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoCapture$eUP2DCIcqh6vHQobLQ_ZV_N5cXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoCapture;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$eUP2DCIcqh6vHQobLQ_ZV_N5cXk;->f$0:Landroidx/camera/video/VideoCapture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$eUP2DCIcqh6vHQobLQ_ZV_N5cXk;->f$0:Landroidx/camera/video/VideoCapture;

    invoke-static {v0}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$0(Landroidx/camera/video/VideoCapture;)V

    return-void
.end method
