.class Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentView;->onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->finish(I)V

    :cond_0
    return-void
.end method
