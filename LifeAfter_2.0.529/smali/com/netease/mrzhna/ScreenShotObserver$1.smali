.class Lcom/netease/mrzhna/ScreenShotObserver$1;
.super Ljava/lang/Object;
.source "ScreenShotObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/ScreenShotObserver;->onScreenShot(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/ScreenShotObserver;

.field final synthetic val$height:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/ScreenShotObserver;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->this$0:Lcom/netease/mrzhna/ScreenShotObserver;

    iput-object p2, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$width:I

    iput p4, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Screen shot detected, path: %s, width: %d, height: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreebShotObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->this$0:Lcom/netease/mrzhna/ScreenShotObserver;

    invoke-static {v0}, Lcom/netease/mrzhna/ScreenShotObserver;->access$000(Lcom/netease/mrzhna/ScreenShotObserver;)Lcom/netease/mrzhna/IScreenShotListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$path:Ljava/lang/String;

    iget v2, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$width:I

    iget v3, p0, Lcom/netease/mrzhna/ScreenShotObserver$1;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mrzhna/IScreenShotListener;->onScreenShot(Ljava/lang/String;II)V

    return-void
.end method
