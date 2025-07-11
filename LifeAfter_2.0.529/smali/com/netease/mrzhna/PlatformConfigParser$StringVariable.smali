.class public Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;
.super Lcom/netease/mrzhna/PlatformConfigParser$Variable;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringVariable"
.end annotation


# instance fields
.field protected m_value:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mrzhna/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->this$0:Lcom/netease/mrzhna/PlatformConfigParser;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/netease/mrzhna/PlatformConfigParser$Variable;-><init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "=="

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "!="

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const-string v0, "contain"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "startwith"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "endwith"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    const-string v0, "not contain"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    const-string v0, "not startwith"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_6
    const-string v0, "not endwith"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    iget-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 145
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized predicate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeoXDevice"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->m_value:Ljava/lang/String;

    return-object v0
.end method
