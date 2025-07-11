.class Lcom/netease/mcount/MCountAgent$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->init(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$1;->c:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mcount/MCountAgent$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$1;->c:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$1;->c:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mcount/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
