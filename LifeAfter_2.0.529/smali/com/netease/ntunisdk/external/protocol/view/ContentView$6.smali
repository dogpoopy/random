.class Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    .line 256
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    const/4 v0, 0x1

    return v0
.end method
