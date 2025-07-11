.class public Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;
.super Landroid/os/Binder;
.source "ScreenCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;


# direct methods
.method public constructor <init>(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;->this$0:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;->this$0:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    return-object v0
.end method
