.class Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CatchMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnGestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 205
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$400(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$500(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$600(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$700(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$800(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$300(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$300(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;->onSingleClick()V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
