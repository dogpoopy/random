.class public Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;
.super Lcom/netease/mrzhna/PlatformConfigParser$Variable;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntVariable"
.end annotation


# instance fields
.field protected m_value:I

.field final synthetic this$0:Lcom/netease/mrzhna/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;I)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->this$0:Lcom/netease/mrzhna/PlatformConfigParser;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/netease/mrzhna/PlatformConfigParser$Variable;-><init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;)V

    .line 41
    iput p3, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "=="

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 63
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, "!="

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-eq p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const-string v1, ">="

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-lt p1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const-string v1, ">"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 75
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-le p1, p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    const-string v1, "<="

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 79
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-gt p1, p2, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    const-string v1, "<"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 83
    iget p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    if-ge p1, p2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 87
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized predicate "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeoXDevice"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->m_value:I

    return v0
.end method
