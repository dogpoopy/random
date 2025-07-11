.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$1:I

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$1:I

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$QIeDyYVJ_Gp-sfFHij0nMLA2RdI;->f$3:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->lambda$handleEncodeError$9$EncoderImpl(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
