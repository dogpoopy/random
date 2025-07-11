.class Lcom/netease/neox/NeoXView$2;
.super Ljava/lang/Object;
.source "NeoXView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/neox/NeoXView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/NeoXView;


# direct methods
.method constructor <init>(Lcom/netease/neox/NeoXView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netease/neox/NeoXView$2;->this$0:Lcom/netease/neox/NeoXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netease/neox/NeoXView$2;->this$0:Lcom/netease/neox/NeoXView;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/NeoXView$2;->this$0:Lcom/netease/neox/NeoXView;

    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
