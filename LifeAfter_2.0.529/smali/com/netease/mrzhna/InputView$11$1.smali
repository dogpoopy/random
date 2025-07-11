.class Lcom/netease/mrzhna/InputView$11$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/InputView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mrzhna/InputView$11;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/InputView$11;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$11$1;->this$1:Lcom/netease/mrzhna/InputView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p2, ""

    .line 351
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 354
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/netease/mrzhna/InputView$11$1;->this$1:Lcom/netease/mrzhna/InputView$11;

    iget-object p4, p4, Lcom/netease/mrzhna/InputView$11;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {p4}, Lcom/netease/mrzhna/InputView;->access$1200(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method
