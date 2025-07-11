.class Lcom/netease/mrzhna/InputView$16;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/InputView;->setFontColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/InputView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$16;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$16;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$1100(Lcom/netease/mrzhna/InputView;)V

    return-void
.end method
