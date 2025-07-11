.class Lcom/netease/mcount/MCountAgent$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mcount/b/a;

.field final synthetic c:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;Lcom/netease/mcount/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$5;->c:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$5;->c:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$5;->c:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/b/a;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mcount/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mcount/b/a;)Z

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$5;->c:Lcom/netease/mcount/MCountAgent;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V

    return-void
.end method
