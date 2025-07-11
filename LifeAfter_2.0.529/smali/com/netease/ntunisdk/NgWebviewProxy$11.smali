.class Lcom/netease/ntunisdk/NgWebviewProxy$11;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->postMsgToNative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$11;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$11;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$800(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    return-void
.end method
