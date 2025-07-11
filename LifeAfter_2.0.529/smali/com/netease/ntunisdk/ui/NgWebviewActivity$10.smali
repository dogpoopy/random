.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$10;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->postMsgToNative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$10;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$10;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->closeWebview()V

    return-void
.end method
