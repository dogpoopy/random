.class Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;
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

    .line 244
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->nextPage()V

    return-void
.end method
